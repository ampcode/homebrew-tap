class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1774909414-gfed2d4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774909414-gfed2d4/amp-darwin-arm64"
      sha256 "6f82da992d02cb40593116af7829a9e940789441a7b381e8fab9be4d588ef3d8"
    else
      url "https://static.ampcode.com/cli/0.0.1774909414-gfed2d4/amp-darwin-x64"
      sha256 "7ffce6e4d64747e7d86e665ebaf4b426734cc3243de546d553dee0b062f91823"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1774909414-gfed2d4/amp-linux-arm64"
      sha256 "1368ea0a6f764679229591d7b38ebe2f84b4b98f79c864106e49189fdd2c10a0"
    else
      url "https://static.ampcode.com/cli/0.0.1774909414-gfed2d4/amp-linux-x64"
      sha256 "918dda5b82f16f3156caf7083d26169b3e56c07a25f155f3869d436245426f88"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
