use Mojolicious::Lite;

get '/' => sub {
  my $c = shift;
  $c->render(text => 'Hello, World!');
};

app->start;

print 'Hello, World!';