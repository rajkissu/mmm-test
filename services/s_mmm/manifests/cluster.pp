# MMM config
class s_mmm::cluster {
    $cluster = hiera('mmm', {})
    create_resources('mmm::cluster::config', $cluster)
}
