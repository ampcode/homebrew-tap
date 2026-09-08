class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788881120-ge1f3b0"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788881120-ge1f3b0/amp-darwin-arm64"
      sha256 "98bd583f336895b3f6e8b4f390ad08e3c167b31655709201613a7f284ff83700"
    else
      url "https://static.ampcode.com/cli/0.0.1788881120-ge1f3b0/amp-darwin-x64"
      sha256 "0573d57d7b86f8b118306ac56e08b5833b7ce397b97c33195ff0951148cf3c54"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788881120-ge1f3b0/amp-linux-arm64"
      sha256 "c21a2adaa11ab0dcf5005d7e280060a7f32882d27d33b6b11f7c92b87a4bceca"
    else
      url "https://static.ampcode.com/cli/0.0.1788881120-ge1f3b0/amp-linux-x64"
      sha256 "f6cd37f22cb91d321406ed84f327ceaae22f7b3a76f6423e4729aacac9fec26b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
