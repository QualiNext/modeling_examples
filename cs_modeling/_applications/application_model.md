---
layout: apidoc
title: Modeling an application
date: "2016-04-30 13:02:32 +0300"
order: 7
---
CS2k18 Applications are modeled using simple YAML files.

@row
@column
{% highlight yaml %}
# my-application.yaml
{% github_sample /QualiNext/modeling_examples/master/basic_example/applications/demoapp-api.yaml 0 2 %}
{% endhighlight %}

@row
#### metadata
- **name**: The name of the application. The application name must be a valid
DNS name as that will be used for discovery inside the environment.
- **tags**: A list of tag names and tag values that will be added to instances
running this application  

@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/applications/demoapp-api.yaml 3 9 %}
{% endhighlight %}

@row
#### infrastructure
The infrastructure section defines the **default** infrastructure
requirements of the app. These can later be overridden when the app
is used inside a blueprint.
- **spec**: The application spec describes its infrastructure requirements.
This can have a different meaning in different clouds.
- **network**: The ports which the app requires and that are required to
interact with it. By default, ports can be assigned as external ports, which are available from the sandbox, or internal - available to other apps inside the
sandbox.

@column
{% highlight YAML %}
infrastructure:
  spec:
    default: low_end_linux_machine
  network:
    internal: [3001]
    external: [80, 8080]
{% endhighlight %}

@row
#### application
The application section defines the basic artifacts or image to use for the app.
- **image**: Use this field to specify an image which should be used as a baseline for this application.
- **artifacts**: A list of tag names and tag values that will be assigned to instances
running this application.

@column
{% highlight YAML %}
application:
  image: standard_centos_7
  artifacts:
    identifier: app-api
{% endhighlight %}

@row
#### orchestration
The orchestration section defines the basic artifacts or image to use for the app.
- **deploy**: The application spec describes its infrastructure requirements.
This can have a different meaning in different clouds.
- **healthcheck**: This section contains information about the artifact of the
applications and how its identified.
- **cleanup**: This section contains information about the artifact of the
applications and how its identified.

@column
{% highlight YAML %}
orchestration:
  lifecycle:
    - setup: setup_app.sh
    - healthcheck: verify.sh
    - cleanup: db_export.sh
{% endhighlight %}
