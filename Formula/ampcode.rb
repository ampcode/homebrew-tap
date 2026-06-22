class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782094482-gbb43a4"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782094482-gbb43a4/amp-darwin-arm64"
      sha256 "a7463315c0715f5b365ec1ac8737733502969c7ab185d9cf7a2aadc96d0e4152"
    else
      url "https://static.ampcode.com/cli/0.0.1782094482-gbb43a4/amp-darwin-x64"
      sha256 "b959f4d55105802a79a8381bc3b7104c64026ee31f7154af7a97afdc5aaf8643"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782094482-gbb43a4/amp-linux-arm64"
      sha256 "9699b54575f29598d75fe585ee8e0b9c5ad8ee673610d4bf7f4da12ffb0d6fbc"
    else
      url "https://static.ampcode.com/cli/0.0.1782094482-gbb43a4/amp-linux-x64"
      sha256 "78ef784bac4904831a2c9cab9a55d8dca762dcc49d8880292f054fae0d23eed8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
