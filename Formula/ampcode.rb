class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781576161-g57e58a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781576161-g57e58a/amp-darwin-arm64"
      sha256 "2d57263ecb50aab5cb291041761e386384cc40cd9220daaf74c549ba0c56ecb1"
    else
      url "https://static.ampcode.com/cli/0.0.1781576161-g57e58a/amp-darwin-x64"
      sha256 "cd2f324a5b7ff3f53f5b6a18f648d86f113d7ca927be28b425d23cb7a89cfc66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781576161-g57e58a/amp-linux-arm64"
      sha256 "505f4ded679c45f09d4e990d9baf1d6cb70dfd00cefbac6de62b710fc01faaba"
    else
      url "https://static.ampcode.com/cli/0.0.1781576161-g57e58a/amp-linux-x64"
      sha256 "fd552378f0b040686d00413fcfc45605e94b19fe9f45c95aebda44471c2d2d46"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
