class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771485318-g484559"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771485318-g484559/amp-darwin-arm64"
      sha256 "a96d41f3dfdae990c0a6ceea9eba4c8c3b7636c6b58469c4777391d659184439"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771485318-g484559/amp-darwin-x64"
      sha256 "685ec69e680412b0303d8e4923a0621321e5d2aa76e80a7cc6230094626f1232"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771485318-g484559/amp-linux-arm64"
      sha256 "885685f260781bf3b62b384d342009d88460a3475c82ccd46d61d7e6109a792f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771485318-g484559/amp-linux-x64"
      sha256 "4a2bd4fabba92aa2e642dead6798322a0835cf7092e5b720ab04cb5edee79a41"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
