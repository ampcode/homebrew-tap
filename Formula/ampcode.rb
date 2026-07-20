class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784524244-g589322"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784524244-g589322/amp-darwin-arm64"
      sha256 "5451b96d76ecc52061197586e6486d4ffca00f5203c2c6fd75a1c3321748f54f"
    else
      url "https://static.ampcode.com/cli/0.0.1784524244-g589322/amp-darwin-x64"
      sha256 "5a8ea152815f57683fa9afae73405a82625fec9fabbc30c6c46a7332f9f92003"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784524244-g589322/amp-linux-arm64"
      sha256 "3219ea2394d19f6a8f71d7a975ed86c3a9a24ab71f526dc6dc8db3e5ca681964"
    else
      url "https://static.ampcode.com/cli/0.0.1784524244-g589322/amp-linux-x64"
      sha256 "3cf58ce77d96449b39534150c388fc81c602d40e854731e47dbedd4670410f14"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
