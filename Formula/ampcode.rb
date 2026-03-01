class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772362077-ga9ec2a"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772362077-ga9ec2a/amp-darwin-arm64"
      sha256 "0525d18bb70ff1af98225a4f653efed4c85494ab14aaa92e382243bee1b7aa3f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772362077-ga9ec2a/amp-darwin-x64"
      sha256 "6f4ea8512092a2df5dcb14ac2db80492d0e130ffd3acf1b781cd0d925e652c3b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772362077-ga9ec2a/amp-linux-arm64"
      sha256 "436dc31abd3e61879af34cbab48838833d3a0a97412534d63d6b48bab7a878ac"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772362077-ga9ec2a/amp-linux-x64"
      sha256 "b70e03e86414486aae4094408875b9dc26fc755469c4592b8669b8a5fe498d3c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
