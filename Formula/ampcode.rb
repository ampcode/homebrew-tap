class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786054439-gd42f19"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786054439-gd42f19/amp-darwin-arm64"
      sha256 "ea6230ba9b1b44cb9c37a9154a77906223765237118ca4b046f05608d646e908"
    else
      url "https://static.ampcode.com/cli/0.0.1786054439-gd42f19/amp-darwin-x64"
      sha256 "3c8c5b13e622f7914079718542132cb3b6cb1b6f71817f2d6412128ec2facb46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786054439-gd42f19/amp-linux-arm64"
      sha256 "f6c85ef96244f8b8a9d48cfcad2a8fa586af8ada55bb8b3a5a8e2a9edbe215a7"
    else
      url "https://static.ampcode.com/cli/0.0.1786054439-gd42f19/amp-linux-x64"
      sha256 "ea89fa7a6b5615e2580c7cdfaeb07ca68e2bca17616fed36654fbea67769ddc9"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
