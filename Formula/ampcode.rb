class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780059282-g6094cf"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780059282-g6094cf/amp-darwin-arm64"
      sha256 "2ef9a428a73b9c3d5d972fe0404f88fa06a5032e3e8402e7e9adbc6ec42653a6"
    else
      url "https://static.ampcode.com/cli/0.0.1780059282-g6094cf/amp-darwin-x64"
      sha256 "58b717787bb220de629b2d0ad1937bd6875a9fb0f8efcab01cebff90afc241d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780059282-g6094cf/amp-linux-arm64"
      sha256 "05d89debafda7a40c0986cdae3fc0245a858958ddd5be3c52196f0591408f9e5"
    else
      url "https://static.ampcode.com/cli/0.0.1780059282-g6094cf/amp-linux-x64"
      sha256 "09d7bc2e3ad5f89d0c760550afd96d1bcf9936f15580b7fc67d80f3dd65436f8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
