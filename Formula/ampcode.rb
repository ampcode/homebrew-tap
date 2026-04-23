class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776920220-g98800a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776920220-g98800a/amp-darwin-arm64"
      sha256 "86b589b3f2bb46c3292cac090af27a23c29ca68e1cbbd675969310f34de763ea"
    else
      url "https://static.ampcode.com/cli/0.0.1776920220-g98800a/amp-darwin-x64"
      sha256 "6b4d5f8855617c2b17dd07494102df0924359c5ef2f3e84e107041f28bf77116"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776920220-g98800a/amp-linux-arm64"
      sha256 "6e1ea71341352cfcb8666919a7a5622d0db2fbd810ef88a176f9484050fa4627"
    else
      url "https://static.ampcode.com/cli/0.0.1776920220-g98800a/amp-linux-x64"
      sha256 "8148f89627043b4db7009dfa267915c14114120389a4ba4a1e90ec1b537f37d2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
