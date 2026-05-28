class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780002161-g8435a7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780002161-g8435a7/amp-darwin-arm64"
      sha256 "e784c1e212c773359fc040d34100555f0f1e99e15bb5c1a0ea3d43f81a23f73b"
    else
      url "https://static.ampcode.com/cli/0.0.1780002161-g8435a7/amp-darwin-x64"
      sha256 "b66cf81c500d751b55e97c25bcc8dcca215cdfbb26b4a707ecd7aefe52c2735a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780002161-g8435a7/amp-linux-arm64"
      sha256 "dc733d18c34fe8bae2f9ce7fefbc2a5784061b48c2fd23d90a8312860c6706d9"
    else
      url "https://static.ampcode.com/cli/0.0.1780002161-g8435a7/amp-linux-x64"
      sha256 "5eee89825182e81f00df5acb586156494073f921cc997f155ef57b6d932c8118"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
