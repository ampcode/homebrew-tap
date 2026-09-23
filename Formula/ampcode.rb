class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790136032-gd47aa1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790136032-gd47aa1/amp-darwin-arm64"
      sha256 "a1cdcb55cc26b8c3f6fb9b1866d6f4c23cb2279bbe920a49cac287e7e14e6360"
    else
      url "https://static.ampcode.com/cli/0.0.1790136032-gd47aa1/amp-darwin-x64"
      sha256 "f32ed2b77bcac73c61ddbd64d870c1bed278b4ecb4e9eaa59020b226d900b750"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790136032-gd47aa1/amp-linux-arm64"
      sha256 "9b51e92a8d338a8a279ac38b57749dff997e63e291d69ce17d3795f35c6cf74a"
    else
      url "https://static.ampcode.com/cli/0.0.1790136032-gd47aa1/amp-linux-x64"
      sha256 "8fd8e2b4249b1c9ef8ddb8ba5d408aa6b27895aa3e17f563bb383b3295f9319a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
