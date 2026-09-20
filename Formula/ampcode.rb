class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789947666-g0115d6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789947666-g0115d6/amp-darwin-arm64"
      sha256 "e472bcc7ef253da4aff4861ce65f439a391e9d1e8a10f92bfc3e5c6413fa775b"
    else
      url "https://static.ampcode.com/cli/0.0.1789947666-g0115d6/amp-darwin-x64"
      sha256 "059f20bb7736f81965ed341277f22d9edaec3a38d25e16a31d46d48331ef473b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789947666-g0115d6/amp-linux-arm64"
      sha256 "b510178df43fb4b280911297acfc8a0fa3dbd359c6abb0206d5f5da353357026"
    else
      url "https://static.ampcode.com/cli/0.0.1789947666-g0115d6/amp-linux-x64"
      sha256 "5a889a11c528ff4e66bd7d621009a0742067d0a8f1f24fa3642a8366530f3d37"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
