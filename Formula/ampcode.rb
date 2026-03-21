class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774094516-g334ac4"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774094516-g334ac4/amp-darwin-arm64"
      sha256 "e75cea5c62856d690176dd80b7b381b2b5c1c06809744211da66915da4d897ef"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774094516-g334ac4/amp-darwin-x64"
      sha256 "4ce94f6975394257c2ac3555ead0eb33c94fd2be8026517222c1a3af7ba97dff"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774094516-g334ac4/amp-linux-arm64"
      sha256 "3b2e601be7ddf0eaa75a160bbbcb9ee471d88f8e34e0c4a87170edd258c42030"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1774094516-g334ac4/amp-linux-x64"
      sha256 "3d9d0bd965ad02badc9977d702e1127b328f77f52f9b8d2ecd8855171e3ab9af"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
