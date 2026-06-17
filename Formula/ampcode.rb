class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781732974-ge41365"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781732974-ge41365/amp-darwin-arm64"
      sha256 "74eae0974d1a99e7aab78dfb641d174a0123fa08f2fbeec49526e7e01bbe4427"
    else
      url "https://static.ampcode.com/cli/0.0.1781732974-ge41365/amp-darwin-x64"
      sha256 "9b9252f9adf603806c82f53913823c43fba8fad2601506be5e165755ea7bb0fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781732974-ge41365/amp-linux-arm64"
      sha256 "ccaf89244752889ef4292cd296419fd43c6964ecedc376c03c939bbb880c2a35"
    else
      url "https://static.ampcode.com/cli/0.0.1781732974-ge41365/amp-linux-x64"
      sha256 "4ae40f7417a87b99b4276a71eeec8869bf6a720d69f56e710e1dec052198576b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
