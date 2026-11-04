class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1793812608-g4510d4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793812608-g4510d4/amp-darwin-arm64"
      sha256 "4565d93a4eb4969e0783a5abf871bc8a3bd778c9e061ee521d156bee962ae7dd"
    else
      url "https://static.ampcode.com/cli/0.0.1793812608-g4510d4/amp-darwin-x64"
      sha256 "bc73ab1aff2ee2f2fdb335484a05ef6d94e15d4901b35667358c01adac9237a4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1793812608-g4510d4/amp-linux-arm64"
      sha256 "d375e4b218a6653b2c6511d1dbcc47e844e3fa386c4a8c35a652d1970cf8f581"
    else
      url "https://static.ampcode.com/cli/0.0.1793812608-g4510d4/amp-linux-x64"
      sha256 "83aadd9b9b7bc746764a707bbd2593f9e4224fa1f6e9359fbdae5b6317b08315"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
