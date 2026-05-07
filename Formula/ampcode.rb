class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778156959-g4bb997"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778156959-g4bb997/amp-darwin-arm64"
      sha256 "7695c8bb2487840573d8311349579191e7378d746243ec4bcedba1938c54842d"
    else
      url "https://static.ampcode.com/cli/0.0.1778156959-g4bb997/amp-darwin-x64"
      sha256 "855b4efb7c57b9b48cac9a59a70d1a125d968ab0503fda6bfc362f2160bf2ee5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778156959-g4bb997/amp-linux-arm64"
      sha256 "020f7df8c23ed38980f62da599667b0cc7dd2b1c89b82781eb7a2854de2f5a42"
    else
      url "https://static.ampcode.com/cli/0.0.1778156959-g4bb997/amp-linux-x64"
      sha256 "a7bddf9d1bce475997db8acdfe22452ce23151e7ee6b66d37734d9fb9112c15e"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
