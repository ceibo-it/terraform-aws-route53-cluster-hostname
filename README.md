# terraform-aws-route53-cluster-hostname

Terraform module to define a consistent AWS Route53 hostname



## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| enabled | Set to false to prevent the module from creating any resources | bool | `true` | no |
| name | The Name of the application or solution  (e.g. `bastion` or `portal`) | string | - | yes |
| alias | Set to true if this is an alias record | bool | `false` | no |
| alias_name | The Name of the application or solution  (e.g. `bastion` or `portal`) for the alias | string | - | no |
| alias_target_zone_id | TRoute53 DNS Zone ID for the alias | string | - | no |
| evaluate_target_health | Valid only when alias=true. Set to true if you want Route 53 to determine whether to respond to DNS queries using this resource record set by checking the health of the resource record set | bool | `false` | no |
| records | DNS records to create | list(string) | - | yes |
| ttl | The TTL of the record to add to the DNS zone to complete certificate validation | string | `300` | no |
| type | Type of DNS records to create | string | `CNAME` | no |
| zone_id | Route53 DNS Zone ID | string | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| hostname | DNS hostname |




## Copyright

Copyright © 2020 [Ceibo IT](https://ceibo.it/copyright)



## License 

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) 

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.




## Trademarks

All other trademarks referenced herein are the property of their respective owners.



## NOTICE

terraform-aws-route53-cluster-hostname
Copyright 2020 Ceibo


This product includes software developed by
Cloud Posse, LLC (c) (https://cloudposse.com/)
Licensed under Apache License, Version 2.0
Copyright © 2017-2019 Cloud Posse, LLC
