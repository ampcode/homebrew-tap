class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769529586-g1fb61d"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769529586-g1fb61d/amp-darwin-arm64"
      sha256 "82da568998cbba0c3efb5dd09f45b00c8bcb7bf0e9fb7bd3a3a086b1389ed8a5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769529586-g1fb61d/amp-darwin-x64"
      sha256 "1d9ed7b3abffb54f2ba0bf55923b0e1ec10e89b6c1c7f0783abd682e16e2320b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769529586-g1fb61d/amp-linux-arm64"
      sha256 "80ddc8a357a45a5dcf88ba3e1b180997e770d4d3d7088033e4e3c9fc579af910"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769529586-g1fb61d/amp-linux-x64"
      sha256 "8852023890a74cbfc3fea4a4f48d54f14c8b6c8f4c9f0d9f9ff5faf7ee0230f4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
