class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779426990-g24af9a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779426990-g24af9a/amp-darwin-arm64"
      sha256 "f58ccf8b3eb96359b2d3d3e03ddc2cd9b19772e83102eeb8fd1178de9266cc62"
    else
      url "https://static.ampcode.com/cli/0.0.1779426990-g24af9a/amp-darwin-x64"
      sha256 "c0b2bf997858881b11a20f558bccb8da09ebf73e4d787cc112bf0a814032093f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779426990-g24af9a/amp-linux-arm64"
      sha256 "67dc0c224c7ea6dae08961fcb1fb134f2a27d5a8d156e0e14b0b0ea547b30f48"
    else
      url "https://static.ampcode.com/cli/0.0.1779426990-g24af9a/amp-linux-x64"
      sha256 "267205553522ada4855f7a91a1ad14bed3b1256aa37855e94048791a07e1f6a9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
