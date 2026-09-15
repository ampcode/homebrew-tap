class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1789461065-g3013e9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789461065-g3013e9/amp-darwin-arm64"
      sha256 "f04a24731bbe562a34b3bb1b7ad807ab62b87860989598588cff033c965331ea"
    else
      url "https://static.ampcode.com/cli/0.0.1789461065-g3013e9/amp-darwin-x64"
      sha256 "7c1a6d120a518017915856456b7b2c73e033f4d70952b1e7c7e12fdbb681332d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1789461065-g3013e9/amp-linux-arm64"
      sha256 "a94eaf111da236208bc3c5b89a39e46c63b87c1646ae0657682056714e923b11"
    else
      url "https://static.ampcode.com/cli/0.0.1789461065-g3013e9/amp-linux-x64"
      sha256 "e8485fdee3edcab127b6224d26b86b655d113fafa53236c8422e50c55d4c1281"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
