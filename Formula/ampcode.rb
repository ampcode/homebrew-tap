class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776487479-g1d7e81"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776487479-g1d7e81/amp-darwin-arm64"
      sha256 "271aa7b90a074615d4cfdc02b83a797d14a139fb77edcc74e23a7847f196f086"
    else
      url "https://static.ampcode.com/cli/0.0.1776487479-g1d7e81/amp-darwin-x64"
      sha256 "61f87d587e8aefd49d8c18ca1b86623776c667b814066e209040dacdc4c23a7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776487479-g1d7e81/amp-linux-arm64"
      sha256 "2b14f8e94da34e033edb398ffd0ebf58e67d593b4d752169d882b31d42c47e82"
    else
      url "https://static.ampcode.com/cli/0.0.1776487479-g1d7e81/amp-linux-x64"
      sha256 "b3ea291ba7424a402fc544357bb3fe2375f22d9ef93100bebafef87097cc7c0a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
