include:
  - common.consul

/etc/consul.d/000-server.json:
  file.managed:
  - source: salt://common/consul/files/etc/consul.d/000-server.json.jinja
  - template: jinja
  - context: 
    stack_name: {{ salt['pillar.get']('stack:stackname') }}
  - require_in:
    - service: consul
  
