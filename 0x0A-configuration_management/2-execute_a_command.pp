# kill process killmenow
exec { 'pkill':
  provider  => 'shell',
  command   => 'pkill killmenow',
}
