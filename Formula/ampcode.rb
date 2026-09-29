class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790712063-gb89205"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790712063-gb89205/amp-darwin-arm64"
      sha256 "d8cf2f7b7af92a32210ffe2d6da33be85f3b6ba5b624a62bc0d3e56d1628a917"
    else
      url "https://static.ampcode.com/cli/0.0.1790712063-gb89205/amp-darwin-x64"
      sha256 "93d8d801c3a6a8c9911f7343c59dac4b6594abf26ae46292c397f1ae31a50905"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790712063-gb89205/amp-linux-arm64"
      sha256 "bb6c73a5a2bb80ecd70ccc0ee1ecc19676319917a18e568028894ebdfa6f228b"
    else
      url "https://static.ampcode.com/cli/0.0.1790712063-gb89205/amp-linux-x64"
      sha256 "429ab63078b1f33a6d474d5178d5711d321c44e457f4ac63d8f2dff613c74c6a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
