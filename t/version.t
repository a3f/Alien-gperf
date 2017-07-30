use Test::More;
use Test::Alien 0.05;
use Alien::gperf;

alien_ok 'Alien::gperf';
use Env qw( @PATH );

unshift @ENV, Alien::gperf->bin_dir;
my $out = qx/gperf --version/;
is $?, 0, "Calling gperf --version doesn't fail";
like ($out, qr/Free Software Foundation/, "Check if --version gives familiar content");
diag $out;

done_testing;
