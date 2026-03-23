class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774286630-gfbf924"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774286630-gfbf924/amp-darwin-arm64"
      sha256 "25b44fc608cb48cc7af7f07996e1c924c509e47194e07db85f7d0bf5d4f66cd3"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774286630-gfbf924/amp-darwin-x64"
      sha256 "dc29e7a7399325152817c5826c7f4c54611fcbea76389d6a50b7da692ef15197"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774286630-gfbf924/amp-linux-arm64"
      sha256 "90d481a793428136928a4365d8cb31b783e6d0f2da70a056a2e680d540a88482"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774286630-gfbf924/amp-linux-x64"
      sha256 "838e77fe466bc0c2fa93da6cccc232965ff32c9f7a5ccc170934fbbc9121589e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
