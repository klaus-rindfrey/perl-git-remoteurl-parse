use strict;
use warnings;
use Test::More;

# Development/release test: only run if RELEASE_TESTING=1 is set.
BEGIN {
    plan skip_all => 'these tests are for release candidate testing'
        unless $ENV{RELEASE_TESTING};
}

use Test::Kwalitee 'kwalitee_ok';

kwalitee_ok();
done_testing();
