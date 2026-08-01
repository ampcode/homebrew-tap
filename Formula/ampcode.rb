class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785543452-gaa1db5"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785543452-gaa1db5/amp-darwin-arm64"
      sha256 "f2d12e8ee85be9de8d5b8710aede2f9fd3dc436bf23b0b98f64732fdc2deebc4"
    else
      url "https://static.ampcode.com/cli/0.0.1785543452-gaa1db5/amp-darwin-x64"
      sha256 "65177c38f857e9a3ed9a16534b6fb0a425af890b86844d0e7fe495e158ff53e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785543452-gaa1db5/amp-linux-arm64"
      sha256 "2cc9d62610f6c206d2a393de7f3759710a3b3160cf41023503f11d0d21b4cc8e"
    else
      url "https://static.ampcode.com/cli/0.0.1785543452-gaa1db5/amp-linux-x64"
      sha256 "b304c9993927e585491ccc9d715db95ff4e678216100915f4bf50ea276e0506c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
