class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791121193-ge297b9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791121193-ge297b9/amp-darwin-arm64"
      sha256 "30d8af7e609975ed7bdc3a095e0d849ffe553f48b331fa514bc9a8d2d75ea4e9"
    else
      url "https://static.ampcode.com/cli/0.0.1791121193-ge297b9/amp-darwin-x64"
      sha256 "41ae8cd1cf3ed89c6c8358ee67b695a2cf75adb9629ee5ee8ae11913c8a7d936"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791121193-ge297b9/amp-linux-arm64"
      sha256 "38aa538832fc5c214874186d6639aa63f7fe29f11ccde1a5dac8467d998a49d6"
    else
      url "https://static.ampcode.com/cli/0.0.1791121193-ge297b9/amp-linux-x64"
      sha256 "dbe0cc8ef24c4dd9ec1a7ff880c7514f4786f24df319947424a0946f85e653f4"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
