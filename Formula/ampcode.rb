class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784105040-gf97f33"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784105040-gf97f33/amp-darwin-arm64"
      sha256 "efd511e16de33749e42ac68d625fb3500241cb71111b31c27fc605ab4a82b5e3"
    else
      url "https://static.ampcode.com/cli/0.0.1784105040-gf97f33/amp-darwin-x64"
      sha256 "7ca90d56c318a46d134cbb8d9bd5392adecfdca8adbfba9462603a21cf728eeb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784105040-gf97f33/amp-linux-arm64"
      sha256 "a76e115c4b6a7db5ef8f9caaf84540960cd10cc74efcf853b337a20caa6ae90c"
    else
      url "https://static.ampcode.com/cli/0.0.1784105040-gf97f33/amp-linux-x64"
      sha256 "ccaf6795846d25627f9f7ad707e6fa2c450b8920c988b1c3530b7a8e8db8a524"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
