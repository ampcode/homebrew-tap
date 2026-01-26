class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769425000-g1e5104"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769425000-g1e5104/amp-darwin-arm64"
      sha256 "fda043c42cd220fad5637056796ddd087a3c69933c37e0f984d12cbe61ca07b8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769425000-g1e5104/amp-darwin-x64"
      sha256 "1d9e1b7c3c82775fbf90824a18ce699295dd719fc1174aa322b24d230d24c549"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769425000-g1e5104/amp-linux-arm64"
      sha256 "4d88b406c15b4eb9a285fede3ada5d75ae2a345791daef9e920b24c3b0a4c4ab"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769425000-g1e5104/amp-linux-x64"
      sha256 "3157aaa6dcea89ed993301a3e752b3db7a8657043f6149fe77cad29b212902c3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
