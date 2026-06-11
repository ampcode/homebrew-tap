class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781166336-g02cc1e"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781166336-g02cc1e/amp-darwin-arm64"
      sha256 "55706da2252edf2d9d2d6a2fc7b6dbebcadcde2aefaf40f7675d50ebc8965dd5"
    else
      url "https://static.ampcode.com/cli/0.0.1781166336-g02cc1e/amp-darwin-x64"
      sha256 "56ae4d41a248f2fa0c2c02bc1ed508c8394e4299d16356c521b706a58fb68200"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781166336-g02cc1e/amp-linux-arm64"
      sha256 "5ddd9c583feec8969485bf43687b508eb15ee29831092f5f61a49bd1d8e186e7"
    else
      url "https://static.ampcode.com/cli/0.0.1781166336-g02cc1e/amp-linux-x64"
      sha256 "a86f863e6a942f233fb84a87c0f227a2d1eb97396b2d07e40c6951dd5d893b46"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
