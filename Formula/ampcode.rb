class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788357228-g3aac34"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788357228-g3aac34/amp-darwin-arm64"
      sha256 "e167cf8f564ebe1b990669a4b9b015e5cfcb0acd47f9e09063054bba36e20804"
    else
      url "https://static.ampcode.com/cli/0.0.1788357228-g3aac34/amp-darwin-x64"
      sha256 "0a36e07f60c8efd692482c02a7e476ba84aac46e6f8a44671bb532bca41b2c3a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788357228-g3aac34/amp-linux-arm64"
      sha256 "9f9faf687e76c1a1029b5de13d6d4df866ab55e6ba1632f2d92968fef8d258b5"
    else
      url "https://static.ampcode.com/cli/0.0.1788357228-g3aac34/amp-linux-x64"
      sha256 "dd60603ad30b6bcfdcf01653a84fcfc8d64b69dc4402a13d05bd0f752d97b9dd"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
