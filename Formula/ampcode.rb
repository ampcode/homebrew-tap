class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776614867-g13eef6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776614867-g13eef6/amp-darwin-arm64"
      sha256 "a8dfaed19cfa3cb9b8f8c61356a996c249050d39f56bcb40201e3496c20331fd"
    else
      url "https://static.ampcode.com/cli/0.0.1776614867-g13eef6/amp-darwin-x64"
      sha256 "68c10226b6cc4e3342fadca065ad544aeac9d39cc7f7041f36e6f875135d7d20"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776614867-g13eef6/amp-linux-arm64"
      sha256 "09b9fb027e7e3a2f4ef120e03279ddd0b7d67dbcb0087f7a43b486d2b448c4f0"
    else
      url "https://static.ampcode.com/cli/0.0.1776614867-g13eef6/amp-linux-x64"
      sha256 "b552939f1071196be7611cfa6b0b65e76e6f5141e2eb29c655a528ab17e10f13"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
