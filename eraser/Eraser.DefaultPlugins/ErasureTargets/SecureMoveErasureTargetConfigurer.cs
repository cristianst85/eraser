﻿/* 
 * $Id$
 * Copyright 2008-2010 The Eraser Project
 * Original Author: Joel Low <lowjoel@users.sourceforge.net>
 * Modified By:
 * 
 * This file is part of Eraser.
 * 
 * Eraser is free software: you can redistribute it and/or modify it under the
 * terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version.
 * 
 * Eraser is distributed in the hope that it will be useful, but WITHOUT ANY
 * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 * 
 * A copy of the GNU General Public License can be found at
 * <http://www.gnu.org/licenses/>.
 */

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

using Eraser.Manager;
using Eraser.Util;

namespace Eraser.DefaultPlugins
{
	public partial class SecureMoveErasureTargetConfigurer : UserControl, IErasureTargetConfigurer
	{
		public SecureMoveErasureTargetConfigurer()
		{
			InitializeComponent();
			Theming.ApplyTheme(this);
		}

		#region IConfigurer<ErasureTarget> Members

		public void LoadFrom(ErasureTarget target)
		{
		}

		public bool SaveTo(ErasureTarget target)
		{
			return true;
		}

		#endregion

		#region ICliConfigurer<ErasureTarget> Members

		public void Help()
		{
			throw new NotImplementedException();
		}

		public bool ProcessArgument(string argument)
		{
			throw new NotImplementedException();
		}

		#endregion

		private void fromSelectButton_Click(object sender, EventArgs e)
		{
			fromTxt.Text = SelectFile(fromTxt.Text, S._("Select the Source file"));
		}

		private void fromSelectFolder_Click(object sender, EventArgs e)
		{
			fromTxt.Text = SelectFolder(fromTxt.Text, S._("Select the Source folder"));
		}

		private void toSelectButton_Click(object sender, EventArgs e)
		{
			toTxt.Text = SelectFolder(toTxt.Text, S._("Select the Destination folder"));
		}

		private string SelectFile(string currentPath, string description)
		{
			fileDialog.FileName = currentPath;
			fileDialog.Title = description;
			if (fileDialog.ShowDialog(this) == DialogResult.OK)
			{
				return fileDialog.FileName;
			}

			return string.Empty;
		}

		private string SelectFolder(string currentPath, string description)
		{
			folderDialog.SelectedPath = currentPath;
			folderDialog.Description = description;
			if (folderDialog.ShowDialog(this) == DialogResult.OK)
			{
				return folderDialog.SelectedPath;
			}

			return string.Empty;
		}
	}
}
