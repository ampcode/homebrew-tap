class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772551124-g74cdbd"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772551124-g74cdbd/amp-darwin-arm64"
      sha256 "c56e777f1ad362575742ebe4ae62f242c05b23c385b9dfdc909ea2dcc7aa2e1e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772551124-g74cdbd/amp-darwin-x64"
      sha256 "48c7d75b0839c2369d3a2ff971c2442c58265d5057de8a79bae7c1221bce4099"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772551124-g74cdbd/amp-linux-arm64"
      sha256 "48000ecbb4f6f3e1b55c462a6b4d58cdbeacea9b6e48303601869394a0012e24"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772551124-g74cdbd/amp-linux-x64"
      sha256 "7693a4d0ebbef3e572e25bcc12fcb0e4ef3158e2bc3fb5902d94def908baee99"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
