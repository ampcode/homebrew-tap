class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776946513-g63e052"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776946513-g63e052/amp-darwin-arm64"
      sha256 "9c6053d262a84a956b4d26f2bb8a408bf68e46dbf078a2cc16b2ec4f06f020fd"
    else
      url "https://static.ampcode.com/cli/0.0.1776946513-g63e052/amp-darwin-x64"
      sha256 "eadf5c1d221c015787f01adc67d707b8cbd2f1610380bc287f18c47aedfb68a3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776946513-g63e052/amp-linux-arm64"
      sha256 "59a0f4bea4c82a43954a81530f2dcf48c905c1b36cc4b534548dfa80da4f3fc5"
    else
      url "https://static.ampcode.com/cli/0.0.1776946513-g63e052/amp-linux-x64"
      sha256 "8e91351608859536a4eec778b7f50e5473deda3ac36d97b9fc086c19100b9fe2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
