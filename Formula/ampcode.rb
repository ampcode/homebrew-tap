class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1776436051-g79d81a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776436051-g79d81a/amp-darwin-arm64"
      sha256 "75dd1f31ae92a25e41cb7e801aef9127b9b6273f6f4736378f1b93df8ff7b3e9"
    else
      url "https://static.ampcode.com/cli/0.0.1776436051-g79d81a/amp-darwin-x64"
      sha256 "aa6fbdab993061ee38ed9affe2bacbb41604df7f4794aea7fa78244170417310"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1776436051-g79d81a/amp-linux-arm64"
      sha256 "b78978292763e14033025167a393a0dd19ecb09b78a8c80e5413e57323f43c56"
    else
      url "https://static.ampcode.com/cli/0.0.1776436051-g79d81a/amp-linux-x64"
      sha256 "a95939ec841eca51c0e99076ab83580eacd70d300f06409b1cf23ac65c9a4fc8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
