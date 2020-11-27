kind: pipeline
type: docker
name: default

environment:
  GOARCH: amd64
  GOOS: linux
steps:
- name: clone production
  image: harbor.atompai.com/ops/xarc-bitbucket
  #image: alpine/git
  #  settings:
  #    username:
  #      from_secret: username
  #    password:
  #      from_secret: password
  commands:
  - echo $username
  - ls -l  /root/.ssh/
  - ls -l  /root/.docker/
  - cat  /root/.ssh/id_rsa
  - git clone -b production git@github.com:kurosakisora/hello.git
image_pull_secrets:
- dockerconfig
trigger:
  event:
  - push
  branch:
  - production
