class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769794004-gefe4d8"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769794004-gefe4d8/amp-darwin-arm64"
      sha256 "1c7f8aad5f51f6c9cb581a3b3b914d658484d08698fb1b54cce9b742c3532da9"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769794004-gefe4d8/amp-darwin-x64"
      sha256 "6fc33329f53a6db2ad310e9702ed809e5bc73ff1305126788e99fe3382b34503"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769794004-gefe4d8/amp-linux-arm64"
      sha256 "78dea90bf452c55a5c61a767f23e58350b3050d8ab159ab4745ff211a25d8948"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769794004-gefe4d8/amp-linux-x64"
      sha256 "053c9ffc5a32761689055b4a4462db83743df0c04674895dc95eaa80744584d2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
