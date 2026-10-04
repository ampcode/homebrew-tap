class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791091069-gb9917f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791091069-gb9917f/amp-darwin-arm64"
      sha256 "8fad3c048d21ba97216e4770608aec5647278372323b2bd8e5612ebb0eb02042"
    else
      url "https://static.ampcode.com/cli/0.0.1791091069-gb9917f/amp-darwin-x64"
      sha256 "53cf559af986bf0bf49db3683c1f40b08ea5c151d8b13a5e5f34e0988e5df63d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791091069-gb9917f/amp-linux-arm64"
      sha256 "bfbc3e320f578f1de62208fc6b8918a7e5abdf726b45eca590fb64adef170fa8"
    else
      url "https://static.ampcode.com/cli/0.0.1791091069-gb9917f/amp-linux-x64"
      sha256 "97437d6c66bfd48d175dd64abe9d35cd69ad7d6c35571f8fac297869c0444780"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
