---
layout: apidoc
title: Infrastructure spec
date: "2016-04-30 13:02:32 +0300"
order: 7
---
Target specs defines rules on the infrastructure to
be assigned to each app target, whether a VM or a container.

@row
@column
{% highlight yaml %}
# sample-aws-instance-spec.yaml
{% github_sample /QualiNext/modeling_examples/master/basic_example/target_specs/low_end_instance.aws.yaml tag:pre %}
{% endhighlight %}

@column
{% highlight yaml %}
# sample-kubernetes-instance-spec.yaml
{% github_sample /QualiNext/modeling_examples/master/basic_example/target_specs/low_end_instance.kub.yaml tag:pre %}
{% endhighlight %}

@row
##### metadata
- **name**: The name identifying this instance spec. This
can be referenced in the application.yaml _infrastructure_
section.
- **cloud**: The type of cloud this spec is relevant to
Possible options are _aws_ | _kubernetes_.

@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/target_specs/low_end_instance.aws.yaml tag:metadata %}
{% endhighlight %}

@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/target_specs/low_end_instance.kub.yaml tag:metadata %}
{% endhighlight %}

@row
##### compute
- **ec2.instance_type**: Supported in EC2 clouds, specifies the instance type to use in EC2
- **kub.resources**: Supported in Kubernetes. Specify the RAM/CPU requirement and limits of each
container created for this app. This includes memory and RAM requirements. To set these values, use the same syntax as specified by the Kubernetes API as described [here](https://kubernetes.io/docs/concepts/configuration/manage-compute-resources-container/).

@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/target_specs/low_end_instance.aws.yaml tag:compute %}
{% endhighlight %}

@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/target_specs/low_end_instance.kub.yaml tag:compute %}
{% endhighlight %}

@row
##### storage
- **mount**: The storage will be mounted under the specified
path in the VM/container.
- **size**: The size of the storage to allocate.
- **persistent**: Whether to use persistent storage
- **ebs.volume_type**: Whether to use SSD for the instance
- **kub.storage_selector**: Storage class selector for Kubernetes



@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/target_specs/low_end_instance.aws.yaml tag:storage %}
{% endhighlight %}

@column
{% highlight yaml %}
{% github_sample /QualiNext/modeling_examples/master/basic_example/target_specs/low_end_instance.kub.yaml tag:storage %}
{% endhighlight %}
