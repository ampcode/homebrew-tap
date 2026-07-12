class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783873056-g278461"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783873056-g278461/amp-darwin-arm64"
      sha256 "730f90aa3a80cc4e752750b9341f7d794873f6890ae1cd8be4166c6f5d67ba96"
    else
      url "https://static.ampcode.com/cli/0.0.1783873056-g278461/amp-darwin-x64"
      sha256 "b75b438387f6fae7b97a29648b2757a5fa97019e354e7fca3592d6be03e34222"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783873056-g278461/amp-linux-arm64"
      sha256 "59807695d36d5eadf55c9d7c10b1d012e711bbd30f91b3b6f99d41acb9b29c96"
    else
      url "https://static.ampcode.com/cli/0.0.1783873056-g278461/amp-linux-x64"
      sha256 "8f134c549d0aa62a93237f50ae30f1b323bf7d50e59d92cec9f6873a80252b63"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
