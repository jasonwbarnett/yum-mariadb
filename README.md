# yum-mariadb-cookbook

TODO: Enter the cookbook description here.

## Supported Platforms

TODO: List your supported platforms.

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['yum-mariadb']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### yum-mariadb::default

Include `yum-mariadb` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[yum-mariadb::default]"
  ]
}
```

## License and Authors

Author:: Mindjet LLC (<cookbooks@mindjet.com>)
