class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790438457-ge61352"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790438457-ge61352/amp-darwin-arm64"
      sha256 "33b8f2098c079ef5a717b052f39051ef7dd5a4fa7a774d93403c1156ada2a9ec"
    else
      url "https://static.ampcode.com/cli/0.0.1790438457-ge61352/amp-darwin-x64"
      sha256 "4c010d6c27e078554a41102ae69333271af0ffc7c5298992532a2efb29f9b1ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790438457-ge61352/amp-linux-arm64"
      sha256 "8c0b177e01387c1b0cae85aa12737547517c3bb4f1513b3e547ccc97ee4da994"
    else
      url "https://static.ampcode.com/cli/0.0.1790438457-ge61352/amp-linux-x64"
      sha256 "e0ec69d5494a0358e852540433fa5ff9d159d9924b3df047c59eb2d3d6391e0f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
