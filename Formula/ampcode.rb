class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789920039-gafe14b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789920039-gafe14b/amp-darwin-arm64"
      sha256 "78b48a079778843a9a8d456905b519b28ec66c14e0fc26ba88995fbcee1cc65c"
    else
      url "https://static.ampcode.com/cli/0.0.1789920039-gafe14b/amp-darwin-x64"
      sha256 "58d61b9d0cad4fdc3dd8598cc78c125c2c51045ce1dbde251f6880fd79621082"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789920039-gafe14b/amp-linux-arm64"
      sha256 "bee4fd8800273274af2ced59dbcac62961a0ef144823bb49f0c1ee3aa793e3bc"
    else
      url "https://static.ampcode.com/cli/0.0.1789920039-gafe14b/amp-linux-x64"
      sha256 "434f9bbf359dc56e22221dd13180aba52caaf83fad6f638078bb6d1f16481db4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
