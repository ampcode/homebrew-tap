class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1790539243-gec0608"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790539243-gec0608/amp-darwin-arm64"
      sha256 "3d72b58489ffdae43d032ff77e7ca82442d796e39b70c881d3c5ca54b6b9e370"
    else
      url "https://static.ampcode.com/cli/0.0.1790539243-gec0608/amp-darwin-x64"
      sha256 "973db1ae9fbb1b49bdc3956e903595f91334090ceea53babe9ccdcde979c1add"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1790539243-gec0608/amp-linux-arm64"
      sha256 "79745b3bddd0add6bf3037e37c37600ebe255659e18eb6d2afcec689df34f899"
    else
      url "https://static.ampcode.com/cli/0.0.1790539243-gec0608/amp-linux-x64"
      sha256 "2e888b8d581ecb3933f799e353c73ce9d7e3839b983f3462f01fd65af326b87c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
