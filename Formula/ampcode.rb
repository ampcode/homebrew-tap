class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782048529-g31be0a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782048529-g31be0a/amp-darwin-arm64"
      sha256 "112a31839ffafa513499777396529e07240f99fbca60030593c089b13aa80d43"
    else
      url "https://static.ampcode.com/cli/0.0.1782048529-g31be0a/amp-darwin-x64"
      sha256 "d7c08bc67bdcff3f68ab8ed1d09fda59a3ccefa8aac8973519c66762db3dcf59"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782048529-g31be0a/amp-linux-arm64"
      sha256 "d0b9f6bd0d9c6cc0a6528d3d28a003087a7b7a0bc8867ff2d125d39bfac39cad"
    else
      url "https://static.ampcode.com/cli/0.0.1782048529-g31be0a/amp-linux-x64"
      sha256 "3dfd705265628bf69808082b3aed790df0d5590e3202e0e1d38dd710f1fd9f22"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
