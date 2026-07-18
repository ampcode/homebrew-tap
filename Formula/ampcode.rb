class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784333795-gcbbdf1"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784333795-gcbbdf1/amp-darwin-arm64"
      sha256 "943ece8ac1c24f85cf99a10017bcfb54841f80653f916309c842b26e2b8abef9"
    else
      url "https://static.ampcode.com/cli/0.0.1784333795-gcbbdf1/amp-darwin-x64"
      sha256 "4944dcb51bd7c17f3dac9d2af8a9cc5ce6e8625a0def740f719efcb132673f00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784333795-gcbbdf1/amp-linux-arm64"
      sha256 "c5d82e96c6d578d80abcaa7b092065aa27397df137d2cfdeed91cf31bfc8f759"
    else
      url "https://static.ampcode.com/cli/0.0.1784333795-gcbbdf1/amp-linux-x64"
      sha256 "7386847391bf7f336d4940fbbb6dba6da97fad7e3406b9ece183fea4d8e35c5a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
