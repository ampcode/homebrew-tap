class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780162602-gb8f27a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780162602-gb8f27a/amp-darwin-arm64"
      sha256 "6769a024119b9816d6cf669345432e2606de4ecfbec748ecfa487599c4ecde20"
    else
      url "https://static.ampcode.com/cli/0.0.1780162602-gb8f27a/amp-darwin-x64"
      sha256 "916f770dbe99f6bcca1cf3c215c30f289d0ba50fb932c9ea6c4353015b08f2e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780162602-gb8f27a/amp-linux-arm64"
      sha256 "878dde601bcfe02f5bb665fccd3a78f171af4e5d1bf723a906d7ea5bab1c4de8"
    else
      url "https://static.ampcode.com/cli/0.0.1780162602-gb8f27a/amp-linux-x64"
      sha256 "7fc2b3c9296cbeca8b709393921a0f1bbbf4b8fbb7eb07a241fb657f0e946d7a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
