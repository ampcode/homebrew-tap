class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779599737-g6d0650"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779599737-g6d0650/amp-darwin-arm64"
      sha256 "2e71a3f858066be60d850dcccc8dc68ad5959cf7d07caf85a7f849efe4522bc3"
    else
      url "https://static.ampcode.com/cli/0.0.1779599737-g6d0650/amp-darwin-x64"
      sha256 "59c99514089fe9520babac700c5b42361c11e78605f9d552dca313a8ecccace8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779599737-g6d0650/amp-linux-arm64"
      sha256 "caa3ece385ca84f74762530a24e76a3b11ccaadd9c61226c312c35324a4c0424"
    else
      url "https://static.ampcode.com/cli/0.0.1779599737-g6d0650/amp-linux-x64"
      sha256 "eaa561e3aa3a1da3c5ef7b6a05fa8f5666f557068d7a284d43186c542fb3457d"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
