class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770179348-g5979e6"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770179348-g5979e6/amp-darwin-arm64"
      sha256 "3c63a93e4dd78d8e89448129767c2758538dc32a68aef17c27d35338b3c27a17"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770179348-g5979e6/amp-darwin-x64"
      sha256 "a9393fe1c72f41ac6ce443882fb556117428fa18a98a7281c1ce3c8b0e86d080"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770179348-g5979e6/amp-linux-arm64"
      sha256 "4cfb576bd917602eccda8dea89799814ddea4281f57f70c8febce142587b61ee"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770179348-g5979e6/amp-linux-x64"
      sha256 "2f420bc671c2f8078eb4c16acebb9be930c897df3fa9efd0a52e9e362afa0b76"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
