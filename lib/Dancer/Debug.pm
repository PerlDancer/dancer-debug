package Dancer::Debug;

# ABSTRACT: Extend Plack::Middleware::Debug with some specific panels for Dancer

use strict;
use warnings;

1;

=head1 SYNOPSIS

You can activate the panels in your development configuration file:

    plack_middlewares:
      Debug:
        - panels
        -
          - Parameters
          - Dancer::Version
          - Dancer::Settings
          - Dancer::Logger
          - Dancer::Routes

or in your app.psgi:

    $handler = builder {
        enable "Debug",
            panels => [qw/Dancer::Settings Dancer::Logger Parameters Dancer::Version/];
        $handler;
    };

=head1 DESCRIPTION

Dancer::Debug extends L<Plack::Middleware::Debug> with some specific panels for Dancer.

=head1 MAINTAINER

Dancer Core Team
