package Plack::Middleware::Debug::Dancer::Session;
use 5.008;
use strict;
use warnings;
use parent qw(Plack::Middleware::Debug::Base);
use Dancer::Session;

sub run {
    my ( $self, $env, $panel ) = @_;

    return sub {
        my $session = Dancer::Session->get();
        my @settings = map { $_ => $session->{$_}} keys %$session;
        $panel->content( sub { $self->render_list_pairs( \@settings ) } );
    };
}

1;
