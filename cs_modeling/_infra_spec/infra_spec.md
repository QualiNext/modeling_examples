---
layout: apidoc
title: Infrastructure spec
date: "2016-04-30 13:02:32 +0300"
order: 7
---
Instance specs defines rules on the infrastructure to
be assigned to each app instance, whether a VM or a container.

@row
@column
{% highlight yaml %}
# infra-spec.yaml
{% github_sample /QualiNext/modeling_examples/master/basic_example/instance_specs/low_end_instance.aws.yaml tag:pre %}
{% endhighlight %}

@column

@row
##### metadata
The application section defines the basic artifacts or image to use for the app.
- **name**: The name identifying this instance spec. This
can be referenced in the application.yaml _infrastructure_
section.
- **cloud**: The type of cloud this spec is relevant to
Possible options are _aws_ | _kubernetes_.

@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/instance_specs/low_end_instance.aws.yaml tag:metadata %}
{% endhighlight %}

@column

@row
@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/instance_specs/low_end_instance.aws.yaml tag:compute %}
{% endhighlight %}

@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/instance_specs/low_end_instance.kub.yaml tag:compute %}
{% endhighlight %}

@row
@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/instance_specs/low_end_instance.aws.yaml tag:storage %}
{% endhighlight %}

@column
