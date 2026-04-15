class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776228786-g566ae2"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776228786-g566ae2/amp-darwin-arm64"
      sha256 "918495ee5559337038038e3b73892f8a5dfa7b348a7afa8e0b0a51a545268638"
    else
      url "https://static.ampcode.com/cli/0.0.1776228786-g566ae2/amp-darwin-x64"
      sha256 "26389f56003b939658e1e78b06a18cd739fe698ccc0a9342940938418d108601"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776228786-g566ae2/amp-linux-arm64"
      sha256 "a7b8d37928086c527e973b788ca8e903f305dda9d53efadff6d4fe6f346daa1b"
    else
      url "https://static.ampcode.com/cli/0.0.1776228786-g566ae2/amp-linux-x64"
      sha256 "229ab23f5422c2ec061de64ac7a2dd02d30a01b0434812b929165b6af49fb0dd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
